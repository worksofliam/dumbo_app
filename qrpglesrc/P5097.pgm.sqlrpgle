**free

ctl-opt dftactgrp(*no);

dcl-pi P5097;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1162.rpgleinc'
/copy 'qrpgleref/P3586.rpgleinc'
/copy 'qrpgleref/P1251.rpgleinc'

dcl-ds T716 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T716 FROM T716 LIMIT 1;

theCharVar = 'Hello from P5097';
dsply theCharVar;
P1162();
P3586();
P1251();
return;