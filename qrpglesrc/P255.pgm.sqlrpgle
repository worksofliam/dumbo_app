**free

ctl-opt dftactgrp(*no);

dcl-pi P255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds T50 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T50 FROM T50 LIMIT 1;

theCharVar = 'Hello from P255';
dsply theCharVar;
P231();
P6();
P40();
return;