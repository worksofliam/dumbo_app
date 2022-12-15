**free

ctl-opt dftactgrp(*no);

dcl-pi P2202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P1647.rpgleinc'

dcl-ds theTable extname('T1607') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1607 LIMIT 1;

theCharVar = 'Hello from P2202';
dsply theCharVar;
P864();
P646();
P1647();
return;