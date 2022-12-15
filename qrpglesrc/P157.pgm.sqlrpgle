**free

ctl-opt dftactgrp(*no);

dcl-pi P157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T176 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T176 FROM T176 LIMIT 1;

theCharVar = 'Hello from P157';
dsply theCharVar;
P155();
P108();
P13();
return;