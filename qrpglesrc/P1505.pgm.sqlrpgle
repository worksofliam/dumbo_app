**free

ctl-opt dftactgrp(*no);

dcl-pi P1505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'
/copy 'qrpgleref/P1183.rpgleinc'

dcl-ds T643 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T643 FROM T643 LIMIT 1;

theCharVar = 'Hello from P1505';
dsply theCharVar;
P379();
P676();
P1183();
return;