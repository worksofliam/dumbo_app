**free

ctl-opt dftactgrp(*no);

dcl-pi P211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds T210 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T210 FROM T210 LIMIT 1;

theCharVar = 'Hello from P211';
dsply theCharVar;
P108();
P52();
P115();
return;