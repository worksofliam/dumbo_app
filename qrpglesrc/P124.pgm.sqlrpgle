**free

ctl-opt dftactgrp(*no);

dcl-pi P124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T152 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T152 FROM T152 LIMIT 1;

theCharVar = 'Hello from P124';
dsply theCharVar;
P65();
P34();
P25();
return;