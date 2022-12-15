**free

ctl-opt dftactgrp(*no);

dcl-pi P3412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P965.rpgleinc'
/copy 'qrpgleref/P1503.rpgleinc'
/copy 'qrpgleref/P2152.rpgleinc'

dcl-ds T601 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T601 FROM T601 LIMIT 1;

theCharVar = 'Hello from P3412';
dsply theCharVar;
P965();
P1503();
P2152();
return;