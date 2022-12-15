**free

ctl-opt dftactgrp(*no);

dcl-pi P2845;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P2048.rpgleinc'

dcl-ds theTable extname('T1094') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1094 LIMIT 1;

theCharVar = 'Hello from P2845';
dsply theCharVar;
P88();
P863();
P2048();
return;