**free

ctl-opt dftactgrp(*no);

dcl-pi P1097;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P905.rpgleinc'
/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds T1302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1302 FROM T1302 LIMIT 1;

theCharVar = 'Hello from P1097';
dsply theCharVar;
P905();
P1073();
P194();
return;