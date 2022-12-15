**free

ctl-opt dftactgrp(*no);

dcl-pi P1400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P504.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P1381.rpgleinc'

dcl-ds T1276 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1276 FROM T1276 LIMIT 1;

theCharVar = 'Hello from P1400';
dsply theCharVar;
P504();
P347();
P1381();
return;