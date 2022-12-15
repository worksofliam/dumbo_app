**free

ctl-opt dftactgrp(*no);

dcl-pi P5539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2464.rpgleinc'
/copy 'qrpgleref/P4327.rpgleinc'
/copy 'qrpgleref/P3787.rpgleinc'

dcl-ds T552 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T552 FROM T552 LIMIT 1;

theCharVar = 'Hello from P5539';
dsply theCharVar;
P2464();
P4327();
P3787();
return;