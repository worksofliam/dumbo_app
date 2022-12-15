**free

ctl-opt dftactgrp(*no);

dcl-pi P3637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3154.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P1684.rpgleinc'

dcl-ds T1030 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1030 FROM T1030 LIMIT 1;

theCharVar = 'Hello from P3637';
dsply theCharVar;
P3154();
P269();
P1684();
return;