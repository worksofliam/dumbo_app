**free

ctl-opt dftactgrp(*no);

dcl-pi P1871;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1803.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P1302.rpgleinc'

dcl-ds T363 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T363 FROM T363 LIMIT 1;

theCharVar = 'Hello from P1871';
dsply theCharVar;
P1803();
P414();
P1302();
return;