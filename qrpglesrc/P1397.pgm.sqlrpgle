**free

ctl-opt dftactgrp(*no);

dcl-pi P1397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'

dcl-ds T101 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T101 FROM T101 LIMIT 1;

theCharVar = 'Hello from P1397';
dsply theCharVar;
P299();
P810();
P312();
return;