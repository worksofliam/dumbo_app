**free

ctl-opt dftactgrp(*no);

dcl-pi P5571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P4591.rpgleinc'
/copy 'qrpgleref/P4892.rpgleinc'

dcl-ds T350 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T350 FROM T350 LIMIT 1;

theCharVar = 'Hello from P5571';
dsply theCharVar;
P577();
P4591();
P4892();
return;