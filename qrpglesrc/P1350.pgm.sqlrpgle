**free

ctl-opt dftactgrp(*no);

dcl-pi P1350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1027.rpgleinc'
/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'

dcl-ds T148 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T148 FROM T148 LIMIT 1;

theCharVar = 'Hello from P1350';
dsply theCharVar;
P1027();
P547();
P331();
return;