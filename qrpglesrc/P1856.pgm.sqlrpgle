**free

ctl-opt dftactgrp(*no);

dcl-pi P1856;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P982.rpgleinc'
/copy 'qrpgleref/P719.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'

dcl-ds theTable extname('T186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T186 LIMIT 1;

theCharVar = 'Hello from P1856';
dsply theCharVar;
P982();
P719();
P739();
return;