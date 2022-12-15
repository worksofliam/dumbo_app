**free

ctl-opt dftactgrp(*no);

dcl-pi P101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds T1619 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1619 FROM T1619 LIMIT 1;

theCharVar = 'Hello from P101';
dsply theCharVar;
P19();
P65();
P100();
return;