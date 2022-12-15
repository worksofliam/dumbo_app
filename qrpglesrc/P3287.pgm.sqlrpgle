**free

ctl-opt dftactgrp(*no);

dcl-pi P3287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1213.rpgleinc'
/copy 'qrpgleref/P1099.rpgleinc'
/copy 'qrpgleref/P1037.rpgleinc'

dcl-ds T302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T302 FROM T302 LIMIT 1;

theCharVar = 'Hello from P3287';
dsply theCharVar;
P1213();
P1099();
P1037();
return;