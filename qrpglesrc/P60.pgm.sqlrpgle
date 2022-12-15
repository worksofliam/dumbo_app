**free

ctl-opt dftactgrp(*no);

dcl-pi P60;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds T92 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T92 FROM T92 LIMIT 1;

theCharVar = 'Hello from P60';
dsply theCharVar;
P59();
P3();
P4();
return;