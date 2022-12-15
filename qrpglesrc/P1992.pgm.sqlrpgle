**free

ctl-opt dftactgrp(*no);

dcl-pi P1992;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1766.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds T544 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T544 FROM T544 LIMIT 1;

theCharVar = 'Hello from P1992';
dsply theCharVar;
P1766();
P23();
P46();
return;