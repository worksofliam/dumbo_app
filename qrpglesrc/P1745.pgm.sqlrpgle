**free

ctl-opt dftactgrp(*no);

dcl-pi P1745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1351.rpgleinc'
/copy 'qrpgleref/P1614.rpgleinc'
/copy 'qrpgleref/P989.rpgleinc'

dcl-ds T1364 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1364 FROM T1364 LIMIT 1;

theCharVar = 'Hello from P1745';
dsply theCharVar;
P1351();
P1614();
P989();
return;