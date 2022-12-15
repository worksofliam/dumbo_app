**free

ctl-opt dftactgrp(*no);

dcl-pi P1458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds T1179 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1179 FROM T1179 LIMIT 1;

theCharVar = 'Hello from P1458';
dsply theCharVar;
P793();
P978();
P124();
return;