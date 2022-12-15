**free

ctl-opt dftactgrp(*no);

dcl-pi P1028;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P348.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'

dcl-ds T959 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T959 FROM T959 LIMIT 1;

theCharVar = 'Hello from P1028';
dsply theCharVar;
P348();
P29();
P474();
return;