**free

ctl-opt dftactgrp(*no);

dcl-pi P754;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'

dcl-ds T1115 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1115 FROM T1115 LIMIT 1;

theCharVar = 'Hello from P754';
dsply theCharVar;
P310();
P52();
P588();
return;