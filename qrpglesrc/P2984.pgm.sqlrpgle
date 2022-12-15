**free

ctl-opt dftactgrp(*no);

dcl-pi P2984;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1285.rpgleinc'
/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P1987.rpgleinc'

dcl-ds T267 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T267 FROM T267 LIMIT 1;

theCharVar = 'Hello from P2984';
dsply theCharVar;
P1285();
P773();
P1987();
return;