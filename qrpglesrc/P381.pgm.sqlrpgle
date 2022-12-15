**free

ctl-opt dftactgrp(*no);

dcl-pi P381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds T153 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T153 FROM T153 LIMIT 1;

theCharVar = 'Hello from P381';
dsply theCharVar;
P52();
P248();
P236();
return;