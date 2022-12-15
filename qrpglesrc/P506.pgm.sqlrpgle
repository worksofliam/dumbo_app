**free

ctl-opt dftactgrp(*no);

dcl-pi P506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds T484 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T484 FROM T484 LIMIT 1;

theCharVar = 'Hello from P506';
dsply theCharVar;
P159();
P470();
P1();
return;