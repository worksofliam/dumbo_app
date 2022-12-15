**free

ctl-opt dftactgrp(*no);

dcl-pi P2455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P710.rpgleinc'
/copy 'qrpgleref/P1558.rpgleinc'
/copy 'qrpgleref/P2362.rpgleinc'

dcl-ds theTable extname('T858') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T858 LIMIT 1;

theCharVar = 'Hello from P2455';
dsply theCharVar;
P710();
P1558();
P2362();
return;