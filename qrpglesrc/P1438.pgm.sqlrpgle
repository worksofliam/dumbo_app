**free

ctl-opt dftactgrp(*no);

dcl-pi P1438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds T286 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T286 FROM T286 LIMIT 1;

theCharVar = 'Hello from P1438';
dsply theCharVar;
P116();
P621();
P149();
return;