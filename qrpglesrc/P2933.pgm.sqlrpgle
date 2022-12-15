**free

ctl-opt dftactgrp(*no);

dcl-pi P2933;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P1882.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'

dcl-ds T486 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T486 FROM T486 LIMIT 1;

theCharVar = 'Hello from P2933';
dsply theCharVar;
P433();
P1882();
P293();
return;