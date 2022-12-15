**free

ctl-opt dftactgrp(*no);

dcl-pi P502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds T627 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T627 FROM T627 LIMIT 1;

theCharVar = 'Hello from P502';
dsply theCharVar;
P139();
P4();
P308();
return;