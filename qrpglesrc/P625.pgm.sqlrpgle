**free

ctl-opt dftactgrp(*no);

dcl-pi P625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds T737 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T737 FROM T737 LIMIT 1;

theCharVar = 'Hello from P625';
dsply theCharVar;
P176();
P58();
P126();
return;