**free

ctl-opt dftactgrp(*no);

dcl-pi P2332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P933.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'
/copy 'qrpgleref/P2305.rpgleinc'

dcl-ds T149 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T149 FROM T149 LIMIT 1;

theCharVar = 'Hello from P2332';
dsply theCharVar;
P933();
P1472();
P2305();
return;