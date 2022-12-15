**free

ctl-opt dftactgrp(*no);

dcl-pi P4432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3204.rpgleinc'
/copy 'qrpgleref/P1818.rpgleinc'
/copy 'qrpgleref/P1525.rpgleinc'

dcl-ds T1067 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1067 FROM T1067 LIMIT 1;

theCharVar = 'Hello from P4432';
dsply theCharVar;
P3204();
P1818();
P1525();
return;