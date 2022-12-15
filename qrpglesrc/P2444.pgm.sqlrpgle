**free

ctl-opt dftactgrp(*no);

dcl-pi P2444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1029.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P2047.rpgleinc'

dcl-ds T189 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T189 FROM T189 LIMIT 1;

theCharVar = 'Hello from P2444';
dsply theCharVar;
P1029();
P513();
P2047();
return;