**free

ctl-opt dftactgrp(*no);

dcl-pi P1443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1371.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'

dcl-ds T478 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T478 FROM T478 LIMIT 1;

theCharVar = 'Hello from P1443';
dsply theCharVar;
P1371();
P320();
P743();
return;