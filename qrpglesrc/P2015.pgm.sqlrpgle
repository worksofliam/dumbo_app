**free

ctl-opt dftactgrp(*no);

dcl-pi P2015;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1889.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'

dcl-ds T810 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T810 FROM T810 LIMIT 1;

theCharVar = 'Hello from P2015';
dsply theCharVar;
P1889();
P419();
P335();
return;