**free

ctl-opt dftactgrp(*no);

dcl-pi P1161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P854.rpgleinc'

dcl-ds T158 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T158 FROM T158 LIMIT 1;

theCharVar = 'Hello from P1161';
dsply theCharVar;
P295();
P773();
P854();
return;