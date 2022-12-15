**free

ctl-opt dftactgrp(*no);

dcl-pi P4649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P623.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P1386.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P4649';
dsply theCharVar;
P623();
P246();
P1386();
return;