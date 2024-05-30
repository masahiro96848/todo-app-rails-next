import { EditIcon, DeleteIcon } from '@chakra-ui/icons'
import {
  Box,
  Button,
  Container,
  Heading,
  Input,
  List,
  ListItem,
  IconButton,
} from '@chakra-ui/react'
import type { NextPage } from 'next'
import { useState } from 'react'
import useSWR from 'swr'
import { fetcher } from '../../lib/axiosClient'

type Todo = {
  id: number
  title: string
}

const Index: NextPage = () => {
  const url = 'http://localhost:3000/api/v1/todo'
  const { data, error } = useSWR<Todo[]>(url, fetcher)

  console.log(data)

  const [title] = useState<string>('')

  if (error) return <div>An error has occurred.</div>
  if (!data) return <div>Loading...</div>

  return (
    <Container centerContent>
      <Box textAlign="center" py={10}>
        <Heading as="h1" mb={4}>
          Todo App
        </Heading>
        <Input
          placeholder="タイトルを入力してください"
          value={title}
          onChange={() => console.log('クリック')}
          mb={4}
        />
        <Button
          onClick={() => console.log('クリック')}
          colorScheme="teal"
          mb={4}
        >
          追加
        </Button>
        <List spacing={3} width="100%">
          {data.map((todo) => (
            <ListItem
              key={todo.id}
              display="flex"
              justifyContent="space-between"
              alignItems="center"
              p={2}
              borderWidth={1}
              borderRadius="md"
            >
              {todo.title}
              <Box>
                <IconButton
                  icon={<EditIcon />}
                  onClick={() => console.log('クリック')}
                  mr={2}
                  aria-label={''}
                />
                <IconButton
                  icon={<DeleteIcon />}
                  onClick={() => console.log('クリック')}
                  aria-label={''}
                />
              </Box>
            </ListItem>
          ))}
        </List>
      </Box>
    </Container>
  )
}

export default Index
