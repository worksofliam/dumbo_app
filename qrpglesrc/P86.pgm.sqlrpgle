**free

ctl-opt dftactgrp(*no);

dcl-pi P86;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

dcl-ds T411 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T411 FROM T411 LIMIT 1;

theCharVar = 'Hello from P86';
dsply theCharVar;
P58();
P52();
P81();
return;