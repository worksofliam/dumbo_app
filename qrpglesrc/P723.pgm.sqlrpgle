**free

ctl-opt dftactgrp(*no);

dcl-pi P723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'

dcl-ds T157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T157 FROM T157 LIMIT 1;

theCharVar = 'Hello from P723';
dsply theCharVar;
P683();
P395();
P471();
return;