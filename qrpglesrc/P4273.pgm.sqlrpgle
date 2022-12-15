**free

ctl-opt dftactgrp(*no);

dcl-pi P4273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'

dcl-ds T246 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T246 FROM T246 LIMIT 1;

theCharVar = 'Hello from P4273';
dsply theCharVar;
P315();
P622();
P599();
return;