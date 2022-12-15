**free

ctl-opt dftactgrp(*no);

dcl-pi P1351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P1056.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'

dcl-ds theTable extname('T894') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T894 LIMIT 1;

theCharVar = 'Hello from P1351';
dsply theCharVar;
P169();
P1056();
P494();
return;