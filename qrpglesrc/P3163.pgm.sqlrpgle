**free

ctl-opt dftactgrp(*no);

dcl-pi P3163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1555.rpgleinc'
/copy 'qrpgleref/P1882.rpgleinc'
/copy 'qrpgleref/P2976.rpgleinc'

dcl-ds T316 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T316 FROM T316 LIMIT 1;

theCharVar = 'Hello from P3163';
dsply theCharVar;
P1555();
P1882();
P2976();
return;