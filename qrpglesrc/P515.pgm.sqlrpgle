**free

ctl-opt dftactgrp(*no);

dcl-pi P515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds T623 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T623 FROM T623 LIMIT 1;

theCharVar = 'Hello from P515';
dsply theCharVar;
P386();
P66();
P52();
return;