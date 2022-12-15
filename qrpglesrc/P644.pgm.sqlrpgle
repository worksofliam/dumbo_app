**free

ctl-opt dftactgrp(*no);

dcl-pi P644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'

dcl-ds T192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T192 FROM T192 LIMIT 1;

theCharVar = 'Hello from P644';
dsply theCharVar;
P318();
P221();
P378();
return;