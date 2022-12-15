**free

ctl-opt dftactgrp(*no);

dcl-pi P4726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4375.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P1839.rpgleinc'

dcl-ds T1656 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1656 FROM T1656 LIMIT 1;

theCharVar = 'Hello from P4726';
dsply theCharVar;
P4375();
P382();
P1839();
return;