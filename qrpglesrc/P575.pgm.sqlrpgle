**free

ctl-opt dftactgrp(*no);

dcl-pi P575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds T1504 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1504 FROM T1504 LIMIT 1;

theCharVar = 'Hello from P575';
dsply theCharVar;
P42();
P364();
P167();
return;