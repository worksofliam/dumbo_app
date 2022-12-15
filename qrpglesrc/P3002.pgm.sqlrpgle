**free

ctl-opt dftactgrp(*no);

dcl-pi P3002;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1691.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P1465.rpgleinc'

dcl-ds T632 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T632 FROM T632 LIMIT 1;

theCharVar = 'Hello from P3002';
dsply theCharVar;
P1691();
P89();
P1465();
return;