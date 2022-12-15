**free

ctl-opt dftactgrp(*no);

dcl-pi P788;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P603.rpgleinc'

dcl-ds T1028 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1028 FROM T1028 LIMIT 1;

theCharVar = 'Hello from P788';
dsply theCharVar;
P276();
P104();
P603();
return;