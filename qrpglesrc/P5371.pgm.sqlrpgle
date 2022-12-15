**free

ctl-opt dftactgrp(*no);

dcl-pi P5371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3170.rpgleinc'
/copy 'qrpgleref/P4683.rpgleinc'
/copy 'qrpgleref/P5177.rpgleinc'

dcl-ds T660 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T660 FROM T660 LIMIT 1;

theCharVar = 'Hello from P5371';
dsply theCharVar;
P3170();
P4683();
P5177();
return;