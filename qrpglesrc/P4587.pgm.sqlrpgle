**free

ctl-opt dftactgrp(*no);

dcl-pi P4587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1019.rpgleinc'
/copy 'qrpgleref/P1656.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'

dcl-ds theTable extname('T692') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T692 LIMIT 1;

theCharVar = 'Hello from P4587';
dsply theCharVar;
P1019();
P1656();
P245();
return;