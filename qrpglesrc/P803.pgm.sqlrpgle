**free

ctl-opt dftactgrp(*no);

dcl-pi P803;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'

dcl-ds T1038 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1038 FROM T1038 LIMIT 1;

theCharVar = 'Hello from P803';
dsply theCharVar;
P158();
P683();
P621();
return;