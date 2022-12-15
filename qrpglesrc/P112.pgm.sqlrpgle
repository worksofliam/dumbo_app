**free

ctl-opt dftactgrp(*no);

dcl-pi P112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds T1052 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1052 FROM T1052 LIMIT 1;

theCharVar = 'Hello from P112';
dsply theCharVar;
P23();
P104();
P73();
return;