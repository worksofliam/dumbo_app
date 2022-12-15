**free

ctl-opt dftactgrp(*no);

dcl-pi P3395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2980.rpgleinc'
/copy 'qrpgleref/P1098.rpgleinc'
/copy 'qrpgleref/P1900.rpgleinc'

dcl-ds T1012 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1012 FROM T1012 LIMIT 1;

theCharVar = 'Hello from P3395';
dsply theCharVar;
P2980();
P1098();
P1900();
return;