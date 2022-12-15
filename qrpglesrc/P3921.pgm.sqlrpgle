**free

ctl-opt dftactgrp(*no);

dcl-pi P3921;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3351.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P899.rpgleinc'

dcl-ds T356 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T356 FROM T356 LIMIT 1;

theCharVar = 'Hello from P3921';
dsply theCharVar;
P3351();
P95();
P899();
return;