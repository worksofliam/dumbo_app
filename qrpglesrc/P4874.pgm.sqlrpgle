**free

ctl-opt dftactgrp(*no);

dcl-pi P4874;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3041.rpgleinc'
/copy 'qrpgleref/P1642.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'

dcl-ds theTable extname('T316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T316 LIMIT 1;

theCharVar = 'Hello from P4874';
dsply theCharVar;
P3041();
P1642();
P750();
return;